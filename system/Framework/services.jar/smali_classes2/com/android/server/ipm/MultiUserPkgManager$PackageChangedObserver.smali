.class public interface abstract Lcom/android/server/ipm/MultiUserPkgManager$PackageChangedObserver;
.super Ljava/lang/Object;
.source "MultiUserPkgManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ipm/MultiUserPkgManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PackageChangedObserver"
.end annotation


# virtual methods
.method public abstract packageAdd(Lcom/android/server/ipm/MultiUserPkgManager$APPInfo;)V
.end method

.method public abstract packageRemove(Lcom/android/server/ipm/MultiUserPkgManager$APPInfo;)V
.end method

.method public abstract userAdd(I)V
.end method

.method public abstract userRemove(I)V
.end method
