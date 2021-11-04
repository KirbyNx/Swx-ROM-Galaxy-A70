.class Lvendor/samsung/hardware/health/V2_0/ISehHealth$Stub$11;
.super Ljava/lang/Object;
.source "ISehHealth.java"

# interfaces
.implements Landroid/hardware/health/V2_1/IHealth$getHealthInfo_2_1Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lvendor/samsung/hardware/health/V2_0/ISehHealth$Stub;->onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lvendor/samsung/hardware/health/V2_0/ISehHealth$Stub;

.field final synthetic val$_hidl_reply:Landroid/os/HwParcel;


# direct methods
.method constructor <init>(Lvendor/samsung/hardware/health/V2_0/ISehHealth$Stub;Landroid/os/HwParcel;)V
    .registers 3
    .param p1, "this$0"    # Lvendor/samsung/hardware/health/V2_0/ISehHealth$Stub;

    .line 1082
    iput-object p1, p0, Lvendor/samsung/hardware/health/V2_0/ISehHealth$Stub$11;->this$0:Lvendor/samsung/hardware/health/V2_0/ISehHealth$Stub;

    iput-object p2, p0, Lvendor/samsung/hardware/health/V2_0/ISehHealth$Stub$11;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValues(ILandroid/hardware/health/V2_1/HealthInfo;)V
    .registers 5
    .param p1, "result"    # I
    .param p2, "value"    # Landroid/hardware/health/V2_1/HealthInfo;

    .line 1085
    iget-object v0, p0, Lvendor/samsung/hardware/health/V2_0/ISehHealth$Stub$11;->val$_hidl_reply:Landroid/os/HwParcel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1086
    iget-object v0, p0, Lvendor/samsung/hardware/health/V2_0/ISehHealth$Stub$11;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1087
    iget-object v0, p0, Lvendor/samsung/hardware/health/V2_0/ISehHealth$Stub$11;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {p2, v0}, Landroid/hardware/health/V2_1/HealthInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1088
    iget-object v0, p0, Lvendor/samsung/hardware/health/V2_0/ISehHealth$Stub$11;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {v0}, Landroid/os/HwParcel;->send()V

    .line 1089
    return-void
.end method
