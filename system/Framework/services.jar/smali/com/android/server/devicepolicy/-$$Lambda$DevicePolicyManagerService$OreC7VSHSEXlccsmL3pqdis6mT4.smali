.class public final synthetic Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$OreC7VSHSEXlccsmL3pqdis6mT4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;ZZ)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$OreC7VSHSEXlccsmL3pqdis6mT4;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iput-boolean p2, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$OreC7VSHSEXlccsmL3pqdis6mT4;->f$1:Z

    iput-boolean p3, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$OreC7VSHSEXlccsmL3pqdis6mT4;->f$2:Z

    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$OreC7VSHSEXlccsmL3pqdis6mT4;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-boolean v1, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$OreC7VSHSEXlccsmL3pqdis6mT4;->f$1:Z

    iget-boolean v2, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$OreC7VSHSEXlccsmL3pqdis6mT4;->f$2:Z

    invoke-virtual {v0, v1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->lambda$maybeResumeDeviceWideLoggingLocked$97$DevicePolicyManagerService(ZZ)V

    return-void
.end method
