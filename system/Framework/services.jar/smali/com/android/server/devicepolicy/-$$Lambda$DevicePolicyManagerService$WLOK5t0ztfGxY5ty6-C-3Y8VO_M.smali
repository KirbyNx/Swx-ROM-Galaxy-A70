.class public final synthetic Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$WLOK5t0ztfGxY5ty6-C-3Y8VO_M;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;


# instance fields
.field public final synthetic f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Z

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Ljava/lang/String;ZI)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$WLOK5t0ztfGxY5ty6-C-3Y8VO_M;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iput-object p2, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$WLOK5t0ztfGxY5ty6-C-3Y8VO_M;->f$1:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$WLOK5t0ztfGxY5ty6-C-3Y8VO_M;->f$2:Z

    iput p4, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$WLOK5t0ztfGxY5ty6-C-3Y8VO_M;->f$3:I

    return-void
.end method


# virtual methods
.method public final getOrThrow()Ljava/lang/Object;
    .registers 5

    iget-object v0, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$WLOK5t0ztfGxY5ty6-C-3Y8VO_M;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v1, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$WLOK5t0ztfGxY5ty6-C-3Y8VO_M;->f$1:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$WLOK5t0ztfGxY5ty6-C-3Y8VO_M;->f$2:Z

    iget v3, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$WLOK5t0ztfGxY5ty6-C-3Y8VO_M;->f$3:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->lambda$setApplicationHidden$67$DevicePolicyManagerService(Ljava/lang/String;ZI)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
