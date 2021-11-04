.class public final synthetic Lcom/android/server/display/-$$Lambda$DisplayModeDirector$BrightnessObserver$Sz_V6CJ5z61sWy5IMOJHseavkdg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/-$$Lambda$DisplayModeDirector$BrightnessObserver$Sz_V6CJ5z61sWy5IMOJHseavkdg;->f$0:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/display/-$$Lambda$DisplayModeDirector$BrightnessObserver$Sz_V6CJ5z61sWy5IMOJHseavkdg;->f$0:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->lambda$onBrightnessChangedLocked$0$DisplayModeDirector$BrightnessObserver()V

    return-void
.end method
