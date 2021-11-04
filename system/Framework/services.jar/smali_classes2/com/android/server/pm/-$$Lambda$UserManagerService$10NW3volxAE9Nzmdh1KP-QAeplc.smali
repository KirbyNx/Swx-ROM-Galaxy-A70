.class public final synthetic Lcom/android/server/pm/-$$Lambda$UserManagerService$10NW3volxAE9Nzmdh1KP-QAeplc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/os/UserManagerInternal$UserRestrictionsListener;


# instance fields
.field public final synthetic f$0:Landroid/os/IUserRestrictionsListener;


# direct methods
.method public synthetic constructor <init>(Landroid/os/IUserRestrictionsListener;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/-$$Lambda$UserManagerService$10NW3volxAE9Nzmdh1KP-QAeplc;->f$0:Landroid/os/IUserRestrictionsListener;

    return-void
.end method


# virtual methods
.method public final onUserRestrictionsChanged(ILandroid/os/Bundle;Landroid/os/Bundle;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/pm/-$$Lambda$UserManagerService$10NW3volxAE9Nzmdh1KP-QAeplc;->f$0:Landroid/os/IUserRestrictionsListener;

    invoke-static {v0, p1, p2, p3}, Lcom/android/server/pm/UserManagerService;->lambda$addUserRestrictionsListener$1(Landroid/os/IUserRestrictionsListener;ILandroid/os/Bundle;Landroid/os/Bundle;)V

    return-void
.end method
