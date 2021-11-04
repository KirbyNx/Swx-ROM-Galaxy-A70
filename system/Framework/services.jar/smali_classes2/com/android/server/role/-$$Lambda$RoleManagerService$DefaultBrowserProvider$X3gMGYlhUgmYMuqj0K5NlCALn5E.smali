.class public final synthetic Lcom/android/server/role/-$$Lambda$RoleManagerService$DefaultBrowserProvider$X3gMGYlhUgmYMuqj0K5NlCALn5E;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/os/RemoteCallback$OnResultListener;


# instance fields
.field public final synthetic f$0:Lcom/android/internal/infra/AndroidFuture;


# direct methods
.method public synthetic constructor <init>(Lcom/android/internal/infra/AndroidFuture;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/role/-$$Lambda$RoleManagerService$DefaultBrowserProvider$X3gMGYlhUgmYMuqj0K5NlCALn5E;->f$0:Lcom/android/internal/infra/AndroidFuture;

    return-void
.end method


# virtual methods
.method public final onResult(Landroid/os/Bundle;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/role/-$$Lambda$RoleManagerService$DefaultBrowserProvider$X3gMGYlhUgmYMuqj0K5NlCALn5E;->f$0:Lcom/android/internal/infra/AndroidFuture;

    invoke-static {v0, p1}, Lcom/android/server/role/RoleManagerService$DefaultBrowserProvider;->lambda$setDefaultBrowser$0(Lcom/android/internal/infra/AndroidFuture;Landroid/os/Bundle;)V

    return-void
.end method
