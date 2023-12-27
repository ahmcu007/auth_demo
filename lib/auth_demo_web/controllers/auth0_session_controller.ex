defmodule AuthDemoWeb.Auth0SessionController do
  use AuthDemoWeb, :controller

  alias AuthDemo.Accounts
  alias AuthDemoWeb.UserAuth

  plug Ueberauth

  def request(_conn, _params) do
  end

  def callback(%{assigns: %{ueberauth_auth: auth_data}} = conn, _params) do
    # Find the account if it exists or create it if it doesn't
    case Accounts.get_or_register(auth_data) do
      {:ok, user} ->
        conn
        |> UserAuth.log_in_user(user)

      {:error, _error_changeset} ->
        conn
        |> put_flash(:error, "Invalid email or password")
        |> redirect(to: ~p"/users/log_in")
    end
  end

  def callback(%{assigns: %{ueberauth_failure: _}} = conn, _params) do
    conn
    |> put_flash(:error, "Invalid email or password")
    |> redirect(to: ~p"/users/log_in")
    |> halt()
  end
end
