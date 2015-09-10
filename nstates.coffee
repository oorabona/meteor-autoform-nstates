States = new ReactiveDict

AutoForm.addInputType "tristate",
  template: "tristate"
  valueOut: ->
    tristate = @find '.tristate'
    {value} = tristate[0]
    value

Template.tristate.rendered = ->
  States.set @data.atts.id, @data.value
  return

Template.tristate.helpers
  inputAtts: ->
    @maxValue = Math.max @atts.TristateTitles.length, @atts.TristateIcons.length
    @value = 1

    atts = _.omit(@atts or {}, ['TristateIcons', 'TristateTitles'])
    atts = AutoForm.Utility.addClass atts, 'tristate'
    # remove data-schema-key attribute because we put it
    # on the entire group
    delete atts['data-schema-key']
    delete atts['tristate']
    _.defaults atts,
      value: 1
      indeterminate: false
      readOnly: false
      checked: true

  state: ->
    state = States.get @atts.id
    {
      title: @atts.TristateTitles[state]
      icons: @atts.TristateIcons[state]
    }

  dsk: ->
    { 'data-schema-key': @atts['data-schema-key'] } if @atts

Template.tristate.events
  'change .tristate': (evt, tmpl) ->
    cb = evt.currentTarget
    inst = Template.instance()
    {value} = cb

    state = (value+1) % inst.data.maxValue

    @value = cb.value = state
    States.set cb.id, state
    return
