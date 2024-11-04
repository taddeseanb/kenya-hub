return {
  ['icon-link'] = function(args, kwargs, meta)
    local icon
    local iconLibrary = pandoc.utils.stringify(kwargs['icon_library'])
    local link = pandoc.utils.stringify(kwargs['link'])
    local linkColor = pandoc.utils.stringify(kwargs['link_color'])
    local linkColorClass = ''
    local title = pandoc.utils.stringify(kwargs['title'])

    if iconLibrary == 'bootstrap' then
      icon = '<i \
        class="bi-' .. pandoc.utils.stringify(kwargs['icon']) .. ' me-2"\
        ></i>'
    end

    if iconLibrary == 'lsc' then
      icon = '<img \
        class="align-top me-2"\
        src="/assets/icons/' .. pandoc.utils.stringify(kwargs['icon']) .. '.svg"\
      />'
    end

    if linkColor == 'black' then
      linkColorClass = 'link-dark'
    end

    local iconLink = pandoc.RawInline(
      'html',
      '<a \
        class="' .. linkColorClass .. '"\
        href="' .. link .. '"\
        target="_blank"\
      >\
        ' .. icon .. title .. '\
      </a>'
    )

    return iconLink
  end
}
