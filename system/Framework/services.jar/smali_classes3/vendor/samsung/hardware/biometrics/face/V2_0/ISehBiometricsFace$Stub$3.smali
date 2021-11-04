.class Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace$Stub$3;
.super Ljava/lang/Object;
.source "ISehBiometricsFace.java"

# interfaces
.implements Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace$sehGetFaceTagCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace$Stub;->onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace$Stub;

.field final synthetic val$_hidl_reply:Landroid/os/HwParcel;


# direct methods
.method constructor <init>(Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace$Stub;Landroid/os/HwParcel;)V
    .registers 3
    .param p1, "this$0"    # Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace$Stub;

    .line 1830
    iput-object p1, p0, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace$Stub$3;->this$0:Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace$Stub;

    iput-object p2, p0, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace$Stub$3;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValues(ILvendor/samsung/hardware/biometrics/face/V2_0/SehFaceTag;)V
    .registers 5
    .param p1, "status"    # I
    .param p2, "tagInfo"    # Lvendor/samsung/hardware/biometrics/face/V2_0/SehFaceTag;

    .line 1833
    iget-object v0, p0, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace$Stub$3;->val$_hidl_reply:Landroid/os/HwParcel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1834
    iget-object v0, p0, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace$Stub$3;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1835
    iget-object v0, p0, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace$Stub$3;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {p2, v0}, Lvendor/samsung/hardware/biometrics/face/V2_0/SehFaceTag;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1836
    iget-object v0, p0, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace$Stub$3;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {v0}, Landroid/os/HwParcel;->send()V

    .line 1837
    return-void
.end method
