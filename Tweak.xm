UIWindowScene *scene = nil;
for (UIScene *s in [UIApplication sharedApplication].connectedScenes) {
    if (s.activationState == UISceneActivationStateForegroundActive &&
        [s isKindOfClass:[UIWindowScene class]]) {
        scene = (UIWindowScene *)s;
        break;
    }
}
if (!scene) return;

g_overlayWindow = [[UIWindow alloc] initWithWindowScene:scene];
g_overlayWindow.frame = scene.coordinateSpace.bounds;
g_overlayWindow.windowLevel = UIWindowLevelAlert + 100;
g_overlayWindow.hidden = NO;
g_overlayWindow.backgroundColor = [UIColor clearColor];
