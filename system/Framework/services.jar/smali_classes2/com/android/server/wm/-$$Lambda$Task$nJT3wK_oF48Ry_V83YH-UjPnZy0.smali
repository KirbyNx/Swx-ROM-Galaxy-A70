.class public final synthetic Lcom/android/server/wm/-$$Lambda$Task$nJT3wK_oF48Ry_V83YH-UjPnZy0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/content/res/Configuration;


# direct methods
.method public synthetic constructor <init>(Landroid/content/res/Configuration;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$Task$nJT3wK_oF48Ry_V83YH-UjPnZy0;->f$0:Landroid/content/res/Configuration;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$Task$nJT3wK_oF48Ry_V83YH-UjPnZy0;->f$0:Landroid/content/res/Configuration;

    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    invoke-static {v0, p1}, Lcom/android/server/wm/Task;->lambda$onConfigurationChanged$4(Landroid/content/res/Configuration;Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method
