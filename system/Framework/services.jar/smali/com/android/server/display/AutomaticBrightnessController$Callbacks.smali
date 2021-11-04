.class interface abstract Lcom/android/server/display/AutomaticBrightnessController$Callbacks;
.super Ljava/lang/Object;
.source "AutomaticBrightnessController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/AutomaticBrightnessController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "Callbacks"
.end annotation


# virtual methods
.method public abstract onAmbientLuxChanged(F)V
.end method

.method public abstract onShortTermReset()V
.end method

.method public abstract onUserPointAdded(FI)V
.end method

.method public abstract updateBrightness()V
.end method
