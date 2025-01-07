import React from 'react';

export default function CustomerLandingPage() {
  return (
    <div className="min-vh-100 bg-light py-5">
      <div className="container">
        <h1 className="text-center">Welcome, Customer!</h1>
        <div className="row mt-5">
          <div className="col-md-4">
            <div className="card shadow">
              <div className="card-body text-center">
                <h4>Your Policies</h4>
                <p>View and manage your insurance policies</p>
                <button className="btn btn-primary">View Policies</button>
              </div>
            </div>
          </div>
          <div className="col-md-4">
            <div className="card shadow">
              <div className="card-body text-center">
                <h4>Claims</h4>
                <p>Track your insurance claims</p>
                <button className="btn btn-primary">View Claims</button>
              </div>
            </div>
          </div>
          <div className="col-md-4">
            <div className="card shadow">
              <div className="card-body text-center">
                <h4>Contact Support</h4>
                <p>Reach out for any assistance</p>
                <button className="btn btn-primary">Contact Support</button>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  );
}
