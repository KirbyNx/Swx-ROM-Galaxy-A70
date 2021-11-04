.class public final synthetic Lcom/android/server/wm/-$$Lambda$DisplayRotation$Mgari5XAhzUAToEYfSsVnrxCUSE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/DisplayRotation;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/DisplayRotation;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$DisplayRotation$Mgari5XAhzUAToEYfSsVnrxCUSE;->f$0:Lcom/android/server/wm/DisplayRotation;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$DisplayRotation$Mgari5XAhzUAToEYfSsVnrxCUSE;->f$0:Lcom/android/server/wm/DisplayRotation;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayRotation;->lambda$updateRotationUnchecked$0$DisplayRotation()V

    return-void
.end method
