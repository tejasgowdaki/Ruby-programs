class PaginationHelper

	def initialize(array_items, max_items_per_page)
		@array_items = array_items
		@max_items_per_page = max_items_per_page
	end

	def page_count
		return (@array_items.size.to_f / @max_items_per_page).ceil
	end

	def item_count
		return @array_items.size
	end

	def page_item_count(number)
		@item_pages = []
		@array_items.each_with_index do |item, index|
			if index % @max_items_per_page == 0
				@item_pages.push([item])
			else
				@item_pages.last.push(item)
			end
		end
		if @item_pages.size > number
			return @item_pages[number].size
		else
			return -1
		end
	end

	def page_index(num)
		number = num + 1
		if number > @array_items.size
			return -1
		elsif number <= 0
			return -1
		else
			return (num.to_f / @max_items_per_page).floor
		end
	end
	
end

helper = PaginationHelper.new(['a','b','c','d','e','f'], 4)

puts "Total pages : #{helper.page_count}"

puts "Total items : #{helper.item_count}"

puts "First page items : #{helper.page_item_count(0)}"

puts "Second page items : #{helper.page_item_count(1)}"

puts "Third page items : #{helper.page_item_count(2)}"

puts "Page no. : #{helper.page_index(5)}"

puts "Page no. : #{helper.page_index(2)}"

puts "Page no. : #{helper.page_index(20)}"

puts "Page no. : #{helper.page_index(-10)}"
