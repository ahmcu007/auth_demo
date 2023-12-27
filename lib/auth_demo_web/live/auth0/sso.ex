defmodule AuthDemoWeb.Auth0.Components do
  use Phoenix.Component

  alias AuthDemoWeb.CoreComponents

  def sso(assigns) do
    ~H"""
    <!-- Horizontal Rule -->
    <div>
      <div class="relative flex items-center justify-center my-6">
        <div class="absolute inset-0 flex items-center">
          <div class="w-full border-t border-gray-300"></div>
        </div>
        <div class="relative z-10 px-3 bg-white text-sm text-gray-500">
          Or with
        </div>
      </div>
      <!-- Social Media Login Button -->
      <div class="text-center p-b-100">
        <CoreComponents.button class="w-full bg-white" onclick="window.location.href='/auth/auth0'">
          Single sign on
        </CoreComponents.button>
      </div>
    </div>
    """
  end
end
