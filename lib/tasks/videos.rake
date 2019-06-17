namespace :cats do
  task videos: :environment do
    require 'mechanize'

    cat_count = CatCount.first.count
    cat = Cat.all[cat_count]
    Video.where(cat_id: cat).destroy_all

    a = Mechanize.new
    a.user_agent_alias = 'Mac Safari 4'
    page = a.get('https://www.google.com/videohp?hl=en')

    search_form = page.form_with name: "f"
    search_form.field_with(name: "q").value = cat.title
    search_results = a.submit search_form


    links = []
    search_results.search(".videobox").each do |video|
      video_count = Video.where(cat_id: cat).count
      cite = video.search("cite").text
      if cite == "youtube.com"
        if video_count < 5
          link = video.search("h3 a").attr("href").value.sub("/url?q=https://www.youtube.com/watch%3Fv%3D", "")[0..10]

          Video.create do |x|
            x.video_id = link
            x.cat_id = cat.id
          end

        end
      end
    end

    if (cat_count + 1) == Cat.count
      CatCount.update(count: 0)
    else
      CatCount.update(count: cat_count + 1)
    end

  end

  task videos_first_time: :environment do
    require 'mechanize'

    Cat.all.each do |cat|
      a = Mechanize.new
      a.user_agent_alias = 'Mac Safari 4'
      page = a.get('https://www.google.com.mx/videohp?hl=en')

      search_form = page.form_with name: "f"
      search_form.field_with(name: "q").value = cat.title.sub(": Facts & Trivia", "")
      search_results = a.submit search_form


      links = []
      search_results.search(".videobox").each do |video|
        video_count = Video.where(cat_id: cat).count
        cite = video.search("cite").text
        if cite == "youtube.com"
          if video_count < 5
            link = video.search("h3 a").attr("href").value.sub("/url?q=https://www.youtube.com/watch%3Fv%3D", "")[0..10]

            Video.create do |x|
              x.video_id = link
              x.cat_id = cat.id
            end

          end
        end
      end

    end

  end
end
