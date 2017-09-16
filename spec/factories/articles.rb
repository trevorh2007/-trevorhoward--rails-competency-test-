FactoryGirl.define do
  factory :article do
    title "User Article"
    content "Bacon ipsum dolor amet pastrami ball tip tenderloin boudin, swine drumstick shoulder porchetta leberkas pork loin shankle short loin kielbasa filet mignon. Ham hock ball tip andouille ham, tail short loin pork alcatra chuck. Alcatra ball tip biltong, pig burgdoggen turkey pastrami boudin drumstick leberkas frankfurter ribeye tongue. Turkey picanha ham hock, swine t-bone brisket bresaola burgdoggen. Porchetta turkey ribeye pork belly tail brisket spare ribs beef doner short loin ball tip pig venison cupim pork chop."
    category "News"
    user_id "User"
  end

  factory :admin_article, class: "Article" do
    title "Admin Article"
    content "Bacon ipsum dolor amet pastrami ball tip tenderloin boudin, swine drumstick shoulder porchetta leberkas pork loin shankle short loin kielbasa filet mignon. Ham hock ball tip andouille ham, tail short loin pork alcatra chuck. Alcatra ball tip biltong, pig burgdoggen turkey pastrami boudin drumstick leberkas frankfurter ribeye tongue. Turkey picanha ham hock, swine t-bone brisket bresaola burgdoggen. Porchetta turkey ribeye pork belly tail brisket spare ribs beef doner short loin ball tip pig venison cupim pork chop."
    category "Technology"
    user_id "Admin"
  end

  factory :editor_article, class: "Article" do
    title "Editor Article"
    content "Bacon ipsum dolor amet pastrami ball tip tenderloin boudin, swine drumstick shoulder porchetta leberkas pork loin shankle short loin kielbasa filet mignon. Ham hock ball tip andouille ham, tail short loin pork alcatra chuck. Alcatra ball tip biltong, pig burgdoggen turkey pastrami boudin drumstick leberkas frankfurter ribeye tongue. Turkey picanha ham hock, swine t-bone brisket bresaola burgdoggen. Porchetta turkey ribeye pork belly tail brisket spare ribs beef doner short loin ball tip pig venison cupim pork chop."
    category "Space"
    user_id "Editor"
  end

end