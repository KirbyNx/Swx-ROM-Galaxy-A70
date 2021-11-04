.class Lcom/android/server/pm/BackgroundDexOptService$1;
.super Ljava/lang/Object;
.source "BackgroundDexOptService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/BackgroundDexOptService;->schedule(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$js:Landroid/app/job/JobScheduler;


# direct methods
.method constructor <init>(Landroid/app/job/JobScheduler;)V
    .registers 2

    .line 199
    iput-object p1, p0, Lcom/android/server/pm/BackgroundDexOptService$1;->val$js:Landroid/app/job/JobScheduler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 201
    const-string v0, "BackgroundDexOptService"

    const-string v1, "Jobs for GMS scheduled"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    iget-object v0, p0, Lcom/android/server/pm/BackgroundDexOptService$1;->val$js:Landroid/app/job/JobScheduler;

    new-instance v1, Landroid/app/job/JobInfo$Builder;

    # getter for: Lcom/android/server/pm/BackgroundDexOptService;->sDexoptServiceName:Landroid/content/ComponentName;
    invoke-static {}, Lcom/android/server/pm/BackgroundDexOptService;->access$100()Landroid/content/ComponentName;

    move-result-object v2

    const/16 v3, 0x322

    invoke-direct {v1, v3, v2}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    .line 203
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/job/JobInfo$Builder;->setRequiresCharging(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    .line 204
    # getter for: Lcom/android/server/pm/BackgroundDexOptService;->GMS_SECONDARY_OPTIMIZATION_PERIOD:J
    invoke-static {}, Lcom/android/server/pm/BackgroundDexOptService;->access$000()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/app/job/JobInfo$Builder;->setPeriodic(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    .line 205
    invoke-virtual {v1}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v1

    .line 202
    invoke-virtual {v0, v1}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    .line 206
    return-void
.end method
