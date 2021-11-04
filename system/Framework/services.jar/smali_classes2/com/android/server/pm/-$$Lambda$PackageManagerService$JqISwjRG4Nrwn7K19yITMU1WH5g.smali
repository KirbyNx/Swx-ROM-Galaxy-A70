.class public final synthetic Lcom/android/server/pm/-$$Lambda$PackageManagerService$JqISwjRG4Nrwn7K19yITMU1WH5g;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/server/compat/CompatChange$ChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/PackageManagerService;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$JqISwjRG4Nrwn7K19yITMU1WH5g;->f$0:Lcom/android/server/pm/PackageManagerService;

    return-void
.end method


# virtual methods
.method public final onCompatChange(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$JqISwjRG4Nrwn7K19yITMU1WH5g;->f$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0, p1}, Lcom/android/server/pm/PackageManagerService;->lambda$main$6(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;)V

    return-void
.end method
