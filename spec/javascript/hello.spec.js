import React from 'react'
import Enzyme, { shallow,render,mount } from 'enzyme'
import Hello from '../../app/javascript/packs/hello.jsx'
import Adapter from 'enzyme-adapter-react-16';  Enzyme.configure({ adapter: new Adapter() });

// jest config setup framework file
// add shallow and render to window
// http://facebook.github.io/jest/docs/en/configuration.html#setuptestframeworkscriptfile-stringebugger


describe('Hello Component', () => {
  const subject = shallow(<Hello name="Stephen" />)

  it('should say hello', () => {
    let result = subject.find('h1').text()
    expect(result).toEqual('Hello Stephen')
  })
})

