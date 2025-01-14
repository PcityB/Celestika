import "@testing-library/jest-dom";
class IntersectionObserverMock {
  root = null
  rootMargin = ''
  thresholds = []
  observe() {}
  disconnect() {}
  unobserve() {}
}

Object.defineProperty(window, 'IntersectionObserver', {
  writable: true,
  configurable: true,
  value: IntersectionObserverMock
})