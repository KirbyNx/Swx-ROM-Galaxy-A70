.class public Lcom/android/server/power/PowerManagerService$NativeWrapper;
.super Ljava/lang/Object;
.source "PowerManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NativeWrapper"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public nativeAcquireSuspendBlocker(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .line 1212
    # invokes: Lcom/android/server/power/PowerManagerService;->nativeAcquireSuspendBlocker(Ljava/lang/String;)V
    invoke-static {p1}, Lcom/android/server/power/PowerManagerService;->access$800(Ljava/lang/String;)V

    .line 1213
    return-void
.end method

.method public nativeForceSuspend()Z
    .registers 2

    .line 1259
    # invokes: Lcom/android/server/power/PowerManagerService;->nativeForceSuspend()Z
    invoke-static {}, Lcom/android/server/power/PowerManagerService;->access$1700()Z

    move-result v0

    return v0
.end method

.method public nativeInit(Lcom/android/server/power/PowerManagerService;)V
    .registers 2
    .param p1, "service"    # Lcom/android/server/power/PowerManagerService;

    .line 1207
    # invokes: Lcom/android/server/power/PowerManagerService;->nativeInit()V
    invoke-static {p1}, Lcom/android/server/power/PowerManagerService;->access$700(Lcom/android/server/power/PowerManagerService;)V

    .line 1208
    return-void
.end method

.method public nativeReleaseSuspendBlocker(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .line 1217
    # invokes: Lcom/android/server/power/PowerManagerService;->nativeReleaseSuspendBlocker(Ljava/lang/String;)V
    invoke-static {p1}, Lcom/android/server/power/PowerManagerService;->access$900(Ljava/lang/String;)V

    .line 1218
    return-void
.end method

.method public nativeSendPowerHint(II)V
    .registers 3
    .param p1, "hintId"    # I
    .param p2, "data"    # I

    .line 1239
    # invokes: Lcom/android/server/power/PowerManagerService;->nativeSendPowerHint(II)V
    invoke-static {p1, p2}, Lcom/android/server/power/PowerManagerService;->access$1300(II)V

    .line 1240
    return-void
.end method

.method public nativeSetAutoSuspend(Z)V
    .registers 2
    .param p1, "enable"    # Z

    .line 1234
    # invokes: Lcom/android/server/power/PowerManagerService;->nativeSetAutoSuspend(Z)V
    invoke-static {p1}, Lcom/android/server/power/PowerManagerService;->access$1200(Z)V

    .line 1235
    return-void
.end method

.method public nativeSetFeature(II)V
    .registers 3
    .param p1, "featureId"    # I
    .param p2, "data"    # I

    .line 1254
    # invokes: Lcom/android/server/power/PowerManagerService;->nativeSetFeature(II)V
    invoke-static {p1, p2}, Lcom/android/server/power/PowerManagerService;->access$1600(II)V

    .line 1255
    return-void
.end method

.method public nativeSetInteractive(Z)V
    .registers 2
    .param p1, "enable"    # Z

    .line 1222
    # invokes: Lcom/android/server/power/PowerManagerService;->nativeSetInteractive(Z)V
    invoke-static {p1}, Lcom/android/server/power/PowerManagerService;->access$1000(Z)V

    .line 1223
    return-void
.end method

.method public nativeSetInteractiveAsync(ZI)V
    .registers 3
    .param p1, "enable"    # Z
    .param p2, "dualScreenPolicy"    # I

    .line 1228
    # invokes: Lcom/android/server/power/PowerManagerService;->nativeSetInteractiveAsync(ZI)V
    invoke-static {p1, p2}, Lcom/android/server/power/PowerManagerService;->access$1100(ZI)V

    .line 1229
    return-void
.end method

.method public nativeSetPowerBoost(II)V
    .registers 3
    .param p1, "boost"    # I
    .param p2, "durationMs"    # I

    .line 1244
    # invokes: Lcom/android/server/power/PowerManagerService;->nativeSetPowerBoost(II)V
    invoke-static {p1, p2}, Lcom/android/server/power/PowerManagerService;->access$1400(II)V

    .line 1245
    return-void
.end method

.method public nativeSetPowerMode(IZ)Z
    .registers 4
    .param p1, "mode"    # I
    .param p2, "enabled"    # Z

    .line 1249
    # invokes: Lcom/android/server/power/PowerManagerService;->nativeSetPowerMode(IZ)Z
    invoke-static {p1, p2}, Lcom/android/server/power/PowerManagerService;->access$1500(IZ)Z

    move-result v0

    return v0
.end method
