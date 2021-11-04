.class public Lvendor/samsung/hardware/light/ISehLights$Default;
.super Ljava/lang/Object;
.source "ISehLights.java"

# interfaces
.implements Lvendor/samsung/hardware/light/ISehLights;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/samsung/hardware/light/ISehLights;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 35
    const/4 v0, 0x0

    return-object v0
.end method

.method public getInterfaceHash()Ljava/lang/String;
    .registers 2

    .line 31
    const-string v0, ""

    return-object v0
.end method

.method public getInterfaceVersion()I
    .registers 2

    .line 27
    const/4 v0, 0x0

    return v0
.end method

.method public getLights()[Lvendor/samsung/hardware/light/SehHwLight;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 23
    const/4 v0, 0x0

    return-object v0
.end method

.method public setLightState(ILandroid/hardware/light/HwLightState;I)V
    .registers 4
    .param p1, "id"    # I
    .param p2, "state"    # Landroid/hardware/light/HwLightState;
    .param p3, "extendedBrightness"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20
    return-void
.end method
