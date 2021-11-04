.class public final synthetic Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$vpiBYp3KfVr_8qv_mpCMx4lw-mk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;


# instance fields
.field public final synthetic f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

.field public final synthetic f$1:Landroid/telephony/TelephonyManager;

.field public final synthetic f$2:Landroid/telephony/data/ApnSetting;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Landroid/telephony/TelephonyManager;Landroid/telephony/data/ApnSetting;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$vpiBYp3KfVr_8qv_mpCMx4lw-mk;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iput-object p2, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$vpiBYp3KfVr_8qv_mpCMx4lw-mk;->f$1:Landroid/telephony/TelephonyManager;

    iput-object p3, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$vpiBYp3KfVr_8qv_mpCMx4lw-mk;->f$2:Landroid/telephony/data/ApnSetting;

    return-void
.end method


# virtual methods
.method public final getOrThrow()Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$vpiBYp3KfVr_8qv_mpCMx4lw-mk;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v1, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$vpiBYp3KfVr_8qv_mpCMx4lw-mk;->f$1:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$vpiBYp3KfVr_8qv_mpCMx4lw-mk;->f$2:Landroid/telephony/data/ApnSetting;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->lambda$addOverrideApn$101$DevicePolicyManagerService(Landroid/telephony/TelephonyManager;Landroid/telephony/data/ApnSetting;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
