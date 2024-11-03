
-- Format a page section
function Div(div)
  if div.classes:includes("page-section") then
    local has_bg_color = div.attributes['has_bg_color']
    local id = div.attributes['id']

    local innerWrapper = pandoc.Div(div.content)
    innerWrapper.classes:extend({'page-section-content container'})

    if id then
      innerWrapper.classes:extend({'page-section-' .. id .. '__content'})
    end

    local outerWrapper = pandoc.Div(innerWrapper)
    outerWrapper.classes:extend(div.classes)

    if id then
      outerWrapper.classes:extend({'page-section-' .. id})
    end

    if has_bg_color then
      outerWrapper.classes:extend({'page-section--has-bg-color'})
    end

    return outerWrapper
  end
end
