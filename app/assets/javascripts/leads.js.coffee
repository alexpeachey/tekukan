window.LeadsController = () ->
  lc = this
  lc.init = () ->
    $('#lead_name').on('focus', () ->
      $('#lead_instructions p').fadeOut( 'fast')
      $('#lead_instructions #name_instruction').delay(250).fadeIn('slow')
    )
    $('#lead_company').on('focus', () ->
      $('#lead_instructions p').fadeOut( 'fast')
      $('#lead_instructions #company_instruction').delay(250).fadeIn('slow')
    )
    $('#lead_email').on('focus', () ->
      $('#lead_instructions p').fadeOut( 'fast')
      $('#lead_instructions #email_instruction').delay(250).fadeIn('slow')
    )
    $('#lead_phone').on('focus', () ->
      $('#lead_instructions p').fadeOut( 'fast')
      $('#lead_instructions #phone_instruction').delay(250).fadeIn('slow')
    )
    $('#lead_description').on('focus', () ->
      $('#lead_instructions p').fadeOut( 'fast')
      $('#lead_instructions #description_instruction').delay(250).fadeIn('slow')
    )
    if $('#lead_name').length > 0
      $('#lead_name').focus()
    return lc
  lc.init()