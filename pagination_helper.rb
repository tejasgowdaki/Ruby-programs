class PaginationHelper
  def initialize(array_items, max_items_per_page)
    @array_items = array_items
    @max_items_per_page = max_items_per_page
  end

  def page_count
    (@array_items.size.to_f / @max_items_per_page).ceil
  end

  def item_count
    @array_items.size
  end

  def page_item_count(number)
    @item_pages = []
    @array_items.each_with_index do |item, index|
      (index % @max_items_per_page).zero? ? @item_pages.push([item]) : @item_pages.last.push(item)
    end
    return @item_pages[number].size if @item_pages.size > number
    -1
  end

  def page_index(num)
    number = num + 1
    return -1 if (number > @array_items.size) || number <= 0
    (num.to_f / @max_items_per_page).floor
  end
end

helper = PaginationHelper.new(%w(a b c d e f), 4)

puts "Total pages : #{helper.page_count}"

puts "Total items : #{helper.item_count}"

puts "First page items : #{helper.page_item_count(0)}"

puts "Second page items : #{helper.page_item_count(1)}"

puts "Third page items : #{helper.page_item_count(2)}"

puts "Page no. : #{helper.page_index(5)}"

puts "Page no. : #{helper.page_index(2)}"

puts "Page no. : #{helper.page_index(20)}"

puts "Page no. : #{helper.page_index(-10)}"
