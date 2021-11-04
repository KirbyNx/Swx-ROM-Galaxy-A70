.class public final synthetic Lcom/android/server/pm/-$$Lambda$PackageManagerService$jnJTm18cw9SRnJgIhISZbUbXGmY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/PackageManagerService;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

.field public final synthetic f$3:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

.field public final synthetic f$4:Ljava/util/ArrayList;

.field public final synthetic f$5:Z

.field public final synthetic f$6:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/PackageManagerService;ZLcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/util/ArrayList;ZLjava/util/List;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$jnJTm18cw9SRnJgIhISZbUbXGmY;->f$0:Lcom/android/server/pm/PackageManagerService;

    iput-boolean p2, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$jnJTm18cw9SRnJgIhISZbUbXGmY;->f$1:Z

    iput-object p3, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$jnJTm18cw9SRnJgIhISZbUbXGmY;->f$2:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    iput-object p4, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$jnJTm18cw9SRnJgIhISZbUbXGmY;->f$3:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    iput-object p5, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$jnJTm18cw9SRnJgIhISZbUbXGmY;->f$4:Ljava/util/ArrayList;

    iput-boolean p6, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$jnJTm18cw9SRnJgIhISZbUbXGmY;->f$5:Z

    iput-object p7, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$jnJTm18cw9SRnJgIhISZbUbXGmY;->f$6:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 8

    iget-object v0, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$jnJTm18cw9SRnJgIhISZbUbXGmY;->f$0:Lcom/android/server/pm/PackageManagerService;

    iget-boolean v1, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$jnJTm18cw9SRnJgIhISZbUbXGmY;->f$1:Z

    iget-object v2, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$jnJTm18cw9SRnJgIhISZbUbXGmY;->f$2:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    iget-object v3, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$jnJTm18cw9SRnJgIhISZbUbXGmY;->f$3:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    iget-object v4, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$jnJTm18cw9SRnJgIhISZbUbXGmY;->f$4:Ljava/util/ArrayList;

    iget-boolean v5, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$jnJTm18cw9SRnJgIhISZbUbXGmY;->f$5:Z

    iget-object v6, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$jnJTm18cw9SRnJgIhISZbUbXGmY;->f$6:Ljava/util/List;

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/PackageManagerService;->lambda$commitPackageSettings$20$PackageManagerService(ZLcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/util/ArrayList;ZLjava/util/List;)V

    return-void
.end method
