.class public final synthetic Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$vyVZ4iPiX8GEOPqJmN3E5bprGS4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;


# instance fields
.field public final synthetic f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/util/List;

.field public final synthetic f$3:Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;ILjava/util/List;Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$vyVZ4iPiX8GEOPqJmN3E5bprGS4;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iput p2, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$vyVZ4iPiX8GEOPqJmN3E5bprGS4;->f$1:I

    iput-object p3, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$vyVZ4iPiX8GEOPqJmN3E5bprGS4;->f$2:Ljava/util/List;

    iput-object p4, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$vyVZ4iPiX8GEOPqJmN3E5bprGS4;->f$3:Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    return-void
.end method


# virtual methods
.method public final getOrThrow()Ljava/lang/Object;
    .registers 5

    iget-object v0, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$vyVZ4iPiX8GEOPqJmN3E5bprGS4;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget v1, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$vyVZ4iPiX8GEOPqJmN3E5bprGS4;->f$1:I

    iget-object v2, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$vyVZ4iPiX8GEOPqJmN3E5bprGS4;->f$2:Ljava/util/List;

    iget-object v3, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$vyVZ4iPiX8GEOPqJmN3E5bprGS4;->f$3:Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->lambda$setMeteredDataDisabledPackages$88$DevicePolicyManagerService(ILjava/util/List;Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
