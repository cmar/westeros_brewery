Deface::Override.new :virtual_path => "spree/shared/_products",
                     :name => "product_override",
                     :replace_contents => "ul#products",
                     :text => %q{
  <% products.each do |product| %>
    <% if Spree::Config[:show_zero_stock_products] || product.has_stock? %>
      <li id="product_<%= product.id %>" class="columns two alpha"
          data-hook="products_list_item" itemscope itemtype="http://schema.org/Product">
        <%= link_to product do %>
          <%= product_image(product, :itemprop => "image") %>
          <h4><%= truncate(product.name, :length => 50) %></h4>
          <p><%= product.description %></p>
          <span itemprop="price">MORE INFO</span>
        <% end %>
      </li>
    <% end %>
  <% end %>
}

Deface::Override.new(:virtual_path => "spree/shared/_products",
                     :insert_bottom => "[data-hook='products_list_item']",
                     :text => "<%= pin_it_button(product) %>",
                     :name => "index_pin_it",
                     :disabled => true)