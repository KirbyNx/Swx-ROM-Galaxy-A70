.class public final synthetic Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$gGeIWRa4-jp2pUPBiUN-ZHGSI3w;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;


# instance fields
.field public final synthetic f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

.field public final synthetic f$1:Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$gGeIWRa4-jp2pUPBiUN-ZHGSI3w;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iput-object p2, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$gGeIWRa4-jp2pUPBiUN-ZHGSI3w;->f$1:Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    iput p3, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$gGeIWRa4-jp2pUPBiUN-ZHGSI3w;->f$2:I

    return-void
.end method


# virtual methods
.method public final getOrThrow()Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$gGeIWRa4-jp2pUPBiUN-ZHGSI3w;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v1, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$gGeIWRa4-jp2pUPBiUN-ZHGSI3w;->f$1:Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    iget v2, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$gGeIWRa4-jp2pUPBiUN-ZHGSI3w;->f$2:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->lambda$clearResetPasswordToken$99$DevicePolicyManagerService(Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;I)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
