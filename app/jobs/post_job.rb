class PostJob < ApplicationJob
  s3_event "jets-s3-event" # new or existing bucket
  def do_one_thing
    # ...
    puts "done a thing..."
    puts "event #{JSON.dump(event)}"
    puts "s3_event #{JSON.dump(s3_event)}"
    puts "s3_object #{JSON.dump(s3_object)}"
  end

  s3_event "jets-s3-event"
  def do_one_thing_for_filtered
    # ...
    puts "done a thing..."
    puts "event #{JSON.dump(event)}"
    puts "s3_event #{JSON.dump(s3_event)}"
    puts "s3_object #{JSON.dump(s3_object)}"
  end

  s3_event "jets-s3-event2" # new or existing bucket
  def do_another_thing
    # ...
    puts "done another thing..."
    puts "event #{JSON.dump(event)}"
    puts "s3_event #{JSON.dump(s3_event)}"
    puts "s3_object #{JSON.dump(s3_object)}"
  end

  s3_event "jets-s3-event2" # new or existing bucket
  def do_another_thing_on_another_bucket
    # ...
    puts "done another thing again..."
    puts "event #{JSON.dump(event)}"
    puts "s3_event #{JSON.dump(s3_event)}"
    puts "s3_object #{JSON.dump(s3_object)}"
  end
end