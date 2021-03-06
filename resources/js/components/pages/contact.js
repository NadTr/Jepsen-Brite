import React, {Component} from 'react';
import ReactDOM from 'react-dom';
import {Link} from 'react-router-dom';

export default class Contact extends Component {
    render() {
        return (
          <div className = "container" >

            <div className = "row text-white mx-auto pb-4" >
              <h1 className = "mt-3 mb-2 text-white" > < i className = "far fa-id-card" > < /i> Contact</h1 >
            </div>

              <div className="row col-12 py-5 mx-auto">

                <div className="col-sm-12 col-md-6 col-lg-4 d-flex flex-wrap align-items-start mb-3 py-4 px-5 ">
                  <h2 className = "mt-3 mb-2 text-white h3 " > < i className = "far fas fa-at" > < /i> E-mail</h2 >
                  <a href="#"><p className="h4 pl-4 pb-3">devevent@gmail.com</p></a>
                </div>

                <div className="col-sm-12 col-md-6 col-lg-4 d-flex flex-wrap align-items-start mb-3 py-4 px-5 mx-auto">
                  <h2 className = "mt-3 mb-2 text-white h3" > < i className = "fas fa-phone-square" > < /i> Phone number</h2 >
                  <p className="h4 pl-4 pb-3 text-danger">+32 456/789.123</p>
                </div>

              </div>

              <div className="row col-12 py-3 mx-auto">

                <div className="col-sm-12 col-md-6 col-lg-4 d-flex flex-wrap align-items-start mb-3 py-4 px-5 ">
                  <h2 className = "mt-3 mb-2 text-white h3 " > < i className = "fab fa-linkedin-in" > < /i> LinkedIn</h2 >
                  <a href="#"><p className="h4 pl-4 pb-3">linkedIn Dev'Event</p></a>
                </div>

                <div className="col-sm-12 col-md-6 col-lg-4 d-flex flex-wrap align-items-start mb-3 py-4 px-5 mx-auto">
                  <h2 className = "mt-3 mb-2 text-white h3" > < i className = "fab fa-facebook-messenger" > < /i> Messenger</h2 >
                  <a href="#"><p className="h4 pl-4 pb-3">Messenger Dev'Event</p></a>
                </div>

              </div>

          </div >
        )
    }
}
