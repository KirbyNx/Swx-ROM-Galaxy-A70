.class public final synthetic Lcom/android/server/backup/-$$Lambda$UserBackupManagerService$TB8LUl0TwUK9CmmdepXioEU4Qxg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/server/backup/internal/OnTaskFinishedListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/backup/UserBackupManagerService;

.field public final synthetic f$1:Lcom/android/server/backup/transport/TransportClient;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/backup/UserBackupManagerService;Lcom/android/server/backup/transport/TransportClient;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/backup/-$$Lambda$UserBackupManagerService$TB8LUl0TwUK9CmmdepXioEU4Qxg;->f$0:Lcom/android/server/backup/UserBackupManagerService;

    iput-object p2, p0, Lcom/android/server/backup/-$$Lambda$UserBackupManagerService$TB8LUl0TwUK9CmmdepXioEU4Qxg;->f$1:Lcom/android/server/backup/transport/TransportClient;

    return-void
.end method


# virtual methods
.method public final onFinished(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/backup/-$$Lambda$UserBackupManagerService$TB8LUl0TwUK9CmmdepXioEU4Qxg;->f$0:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v1, p0, Lcom/android/server/backup/-$$Lambda$UserBackupManagerService$TB8LUl0TwUK9CmmdepXioEU4Qxg;->f$1:Lcom/android/server/backup/transport/TransportClient;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/backup/UserBackupManagerService;->lambda$restoreAtInstall$6$UserBackupManagerService(Lcom/android/server/backup/transport/TransportClient;Ljava/lang/String;)V

    return-void
.end method
