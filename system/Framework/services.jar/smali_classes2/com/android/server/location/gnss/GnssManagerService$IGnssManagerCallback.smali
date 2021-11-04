.class public interface abstract Lcom/android/server/location/gnss/GnssManagerService$IGnssManagerCallback;
.super Ljava/lang/Object;
.source "GnssManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/gnss/GnssManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IGnssManagerCallback"
.end annotation


# virtual methods
.method public abstract addGnssDataListener(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;IIZ)V
.end method

.method public abstract removeGnssDataListener(Landroid/os/IBinder;Ljava/lang/String;)V
.end method

.method public abstract reportProviderStatus(ILjava/lang/Object;)V
.end method

.method public abstract updateGnssDataListener(ZLandroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;II)V
.end method
