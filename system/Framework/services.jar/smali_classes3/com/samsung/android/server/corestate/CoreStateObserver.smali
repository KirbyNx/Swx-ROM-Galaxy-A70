.class public interface abstract Lcom/samsung/android/server/corestate/CoreStateObserver;
.super Ljava/lang/Object;
.source "CoreStateObserver.java"


# static fields
.field public static final CHANGED_FOR_ALL_USERS:I = 0x1

.field public static final CHANGED_FOR_SINGLE_USER:I = 0x2

.field public static final CHANGED_NONE:I


# virtual methods
.method public abstract populateState(Landroid/os/Bundle;I)I
.end method

.method public abstract registerObservingItems()V
.end method
