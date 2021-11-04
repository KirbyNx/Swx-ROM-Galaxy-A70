.class Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace$Stub$2;
.super Ljava/lang/Object;
.source "ISehBiometricsFace.java"

# interfaces
.implements Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace$sehGetFaceTagListCallback;


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

    .line 1814
    iput-object p1, p0, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace$Stub$2;->this$0:Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace$Stub;

    iput-object p2, p0, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace$Stub$2;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValues(ILjava/util/ArrayList;)V
    .registers 5
    .param p1, "status"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1817
    .local p2, "tags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace$Stub$2;->val$_hidl_reply:Landroid/os/HwParcel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1818
    iget-object v0, p0, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace$Stub$2;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1819
    iget-object v0, p0, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace$Stub$2;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32Vector(Ljava/util/ArrayList;)V

    .line 1820
    iget-object v0, p0, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace$Stub$2;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {v0}, Landroid/os/HwParcel;->send()V

    .line 1821
    return-void
.end method
