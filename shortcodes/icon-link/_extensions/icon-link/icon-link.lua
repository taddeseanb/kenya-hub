return {
  ['icon-link'] = function(args, kwargs, meta)
    local icon
    local iconClasses = 'text-primary me-2'
    local iconLibrary = pandoc.utils.stringify(kwargs['icon_library'])
    local link = pandoc.utils.stringify(kwargs['link'])
    local linkColor = pandoc.utils.stringify(kwargs['link_color'])
    local linkColorClass = ''
    local title = pandoc.utils.stringify(kwargs['title'])

    if iconLibrary == 'bootstrap' then
      icon = '<i \
        class="bi-' .. pandoc.utils.stringify(kwargs['icon']) .. ' ' .. iconClasses .. '"\
        ></i>'
    end

    if iconLibrary == 'lsc' then
      icon = '<img \
        class="align-top ' .. iconClasses .. '"\
        src="/assets/icons/' .. pandoc.utils.stringify(kwargs['icon']) .. '.svg"\
      />'
    end

    if linkColor == 'black' then
      linkColorClass = 'link-dark'
    end

    if linkColor == 'white' then
      linkColorClass = 'link-white'
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
