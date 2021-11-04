.class public final synthetic Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$znh_ulcUoOf4wlU0tA8zGEUn3io;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/content/pm/UserInfo;


# direct methods
.method public synthetic constructor <init>(Landroid/content/pm/UserInfo;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$znh_ulcUoOf4wlU0tA8zGEUn3io;->f$0:Landroid/content/pm/UserInfo;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$znh_ulcUoOf4wlU0tA8zGEUn3io;->f$0:Landroid/content/pm/UserInfo;

    check-cast p1, Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v0, p1}, Lcom/android/server/locksettings/LockSettingsService;->lambda$unlockUser$2(Landroid/content/pm/UserInfo;Lcom/android/server/pm/PersonaManagerService;)V

    return-void
.end method
