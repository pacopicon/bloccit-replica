class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def hello
    render text:
"<h1>!مرحبا بكم في صفحتي</h1>
<h1>欢迎来到我的网页!</h1>
<h1>Welcome to my webpage!</h1>
<h1>Bienvenue sur ma page Web!</h1>
<h1>Herzlich Willkommen Sie auf meiner Webseite!</h1>
<h1>Καλώς ήρθατε στην ιστοσελίδα μου!</h1>
<h1>!ברוכים הבאים לאתר האינטרנט שלי</h1>
<h1>अपने वेबपेज के लिए आपका स्वागत है!</h1>
<h1>Benvenuti nel mio sito Web!</h1>
<h1>Velkommen til min webside!</h1>
<h1>Добро пожаловать на мою веб-страницу!</h1>
<h1>¡Bienvenido a mi página!</h1>"
  end

end
