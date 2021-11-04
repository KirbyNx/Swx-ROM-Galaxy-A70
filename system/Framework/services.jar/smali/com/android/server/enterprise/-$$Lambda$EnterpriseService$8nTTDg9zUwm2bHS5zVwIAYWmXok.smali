.class public final synthetic Lcom/android/server/enterprise/-$$Lambda$EnterpriseService$8nTTDg9zUwm2bHS5zVwIAYWmXok;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/os/IServiceCreator;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/enterprise/-$$Lambda$EnterpriseService$8nTTDg9zUwm2bHS5zVwIAYWmXok;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final createService(Landroid/content/Context;)Landroid/os/IBinder;
    .registers 3

    iget-object v0, p0, Lcom/android/server/enterprise/-$$Lambda$EnterpriseService$8nTTDg9zUwm2bHS5zVwIAYWmXok;->f$0:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/android/server/enterprise/EnterpriseService;->lambda$addLazySystemService$0(Ljava/lang/String;Landroid/content/Context;)Landroid/os/IBinder;

    move-result-object p1

    return-object p1
.end method
