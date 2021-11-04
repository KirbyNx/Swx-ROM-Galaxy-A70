.class public interface abstract Lvendor/samsung/hardware/light/ISehLights;
.super Ljava/lang/Object;
.source "ISehLights.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvendor/samsung/hardware/light/ISehLights$Stub;,
        Lvendor/samsung/hardware/light/ISehLights$Default;
    }
.end annotation


# static fields
.field public static final HASH:Ljava/lang/String; = "899cb62340d2e99ab901d1da95d82a8155bbc555"

.field public static final VERSION:I = 0x1


# virtual methods
.method public abstract getInterfaceHash()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getInterfaceVersion()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getLights()[Lvendor/samsung/hardware/light/SehHwLight;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setLightState(ILandroid/hardware/light/HwLightState;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
