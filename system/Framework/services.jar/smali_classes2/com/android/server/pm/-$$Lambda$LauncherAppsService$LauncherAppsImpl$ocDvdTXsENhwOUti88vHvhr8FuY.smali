.class public final synthetic Lcom/android/server/pm/-$$Lambda$LauncherAppsService$LauncherAppsImpl$ocDvdTXsENhwOUti88vHvhr8FuY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Landroid/os/UserHandle;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;Ljava/lang/String;Landroid/os/UserHandle;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/-$$Lambda$LauncherAppsService$LauncherAppsImpl$ocDvdTXsENhwOUti88vHvhr8FuY;->f$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    iput-object p2, p0, Lcom/android/server/pm/-$$Lambda$LauncherAppsService$LauncherAppsImpl$ocDvdTXsENhwOUti88vHvhr8FuY;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/pm/-$$Lambda$LauncherAppsService$LauncherAppsImpl$ocDvdTXsENhwOUti88vHvhr8FuY;->f$2:Landroid/os/UserHandle;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/pm/-$$Lambda$LauncherAppsService$LauncherAppsImpl$ocDvdTXsENhwOUti88vHvhr8FuY;->f$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    iget-object v1, p0, Lcom/android/server/pm/-$$Lambda$LauncherAppsService$LauncherAppsImpl$ocDvdTXsENhwOUti88vHvhr8FuY;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/pm/-$$Lambda$LauncherAppsService$LauncherAppsImpl$ocDvdTXsENhwOUti88vHvhr8FuY;->f$2:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->lambda$changePackageIcon$1$LauncherAppsService$LauncherAppsImpl(Ljava/lang/String;Landroid/os/UserHandle;)V

    return-void
.end method
