// src/app/page.test.tsx

import { render, screen } from '@testing-library/react';
import '@testing-library/jest-dom';
import LoginPage from './page';

describe('LoginPage', () => {
  it('renders the login form with email and password fields', () => {
    render(<LoginPage />);

    // Check heading
    expect(screen.getByRole('heading', { name: /login/i })).toBeInTheDocument();

    // Check email field
    expect(screen.getByLabelText(/email/i)).toBeInTheDocument();

    // Check password field
    expect(screen.getByLabelText(/password/i)).toBeInTheDocument();

    // Check submit button
    expect(screen.getByRole('button', { name: /sign in/i })).toBeInTheDocument();
  });
});
