"use client";

import Link from "next/link";

export default function ErrorPage({
  error,
  reset,
}: {
  error: Error & { digest?: string };
  reset: () => void;
}) {
  return (
    <main className="min-h-screen flex items-center justify-center p-4">
      <div className="text-center space-y-4">
        <h1 className="text-2xl font-bold">Oops! Something went wrong</h1>
        <p className="text-gray-600">We apologize for the inconvenience.</p>

        {/* Error recovery */}
        <div className="space-x-4">
          <button
            className="px-4 py-2 bg-primary text-white rounded hover:bg-primary/90"
            onClick={reset}
          >
            Try again
          </button>
          <Link href="/">Return home</Link>
        </div>

        {/* Show error details in development */}
        {process.env.NODE_ENV === "development" && (
          <div className="mt-8 text-left p-4 bg-gray-100 rounded">
            <p className="font-mono text-sm text-gray-700">{error.message}</p>
            {error.digest && (
              <p className="font-mono text-sm text-gray-500">
                Digest: {error.digest}
              </p>
            )}
          </div>
        )}
      </div>
    </main>
  );
}
