export function getToggleTarget(actionKey: string) {
  return actionKey.startsWith("toggle_") ? actionKey.substring(7) : actionKey;
}
