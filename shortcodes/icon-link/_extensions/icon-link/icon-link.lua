return {
  ['icon-link'] = function(args, kwargs, meta)
    local icon
    local iconClasses = 'text-primary me-2'
    local iconLibrary = pandoc.utils.stringify(kwargs['icon_library'])
    local link = pandoc.utils.stringify(kwargs['link'])
    local linkClasses = pandoc.utils.stringify(kwargs['link_classes'])
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

    local iconLink = pandoc.RawInline(
      'html',
      '<div class="d-flex">\
        ' .. icon .. '\
        <a \
          class="' .. linkClasses .. '"\
          href="' .. link .. '"\
          target="_blank"\
        >\
          ' .. title .. '\
        </a>\
      </div>'
    )

    return iconLink
  end
}
