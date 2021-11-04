.class public final synthetic Lcom/android/server/pm/-$$Lambda$PackageManagerService$Yv-1t--_DRuCZVfsXUjiUvhsnR0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/PackageManagerService;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$Yv-1t--_DRuCZVfsXUjiUvhsnR0;->f$0:Lcom/android/server/pm/PackageManagerService;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$Yv-1t--_DRuCZVfsXUjiUvhsnR0;->f$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->lambda$isInstalldConnected$7$PackageManagerService()V

    return-void
.end method
