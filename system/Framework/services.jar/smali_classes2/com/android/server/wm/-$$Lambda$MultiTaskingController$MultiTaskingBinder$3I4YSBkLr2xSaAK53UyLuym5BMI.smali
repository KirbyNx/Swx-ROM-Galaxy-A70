.class public final synthetic Lcom/android/server/wm/-$$Lambda$MultiTaskingController$MultiTaskingBinder$3I4YSBkLr2xSaAK53UyLuym5BMI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/MultiTaskingController$MultiTaskingBinder;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/MultiTaskingController$MultiTaskingBinder;Z)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$MultiTaskingController$MultiTaskingBinder$3I4YSBkLr2xSaAK53UyLuym5BMI;->f$0:Lcom/android/server/wm/MultiTaskingController$MultiTaskingBinder;

    iput-boolean p2, p0, Lcom/android/server/wm/-$$Lambda$MultiTaskingController$MultiTaskingBinder$3I4YSBkLr2xSaAK53UyLuym5BMI;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$MultiTaskingController$MultiTaskingBinder$3I4YSBkLr2xSaAK53UyLuym5BMI;->f$0:Lcom/android/server/wm/MultiTaskingController$MultiTaskingBinder;

    iget-boolean v1, p0, Lcom/android/server/wm/-$$Lambda$MultiTaskingController$MultiTaskingBinder$3I4YSBkLr2xSaAK53UyLuym5BMI;->f$1:Z

    invoke-virtual {v0, v1}, Lcom/android/server/wm/MultiTaskingController$MultiTaskingBinder;->lambda$setCornerGestureEnabled$2$MultiTaskingController$MultiTaskingBinder(Z)V

    return-void
.end method
