.class public interface abstract Lcom/samsung/android/camera/ICameraServiceWorker;
.super Ljava/lang/Object;
.source "ICameraServiceWorker.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/camera/ICameraServiceWorker$Stub;,
        Lcom/samsung/android/camera/ICameraServiceWorker$Default;
    }
.end annotation


# static fields
.field public static final HASH:Ljava/lang/String; = "7b3482c206b81098e1f5ea982136c03996ac4405"

.field public static final SERVICE_NAME:Ljava/lang/String; = "media.camera.worker"

.field public static final VERSION:I = 0x1


# virtual methods
.method public abstract acquireRequestInjector()Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

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

.method public abstract notifyCameraState(Ljava/lang/String;IILjava/lang/String;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract pingForUpdate()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract queryPackageName(II)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
