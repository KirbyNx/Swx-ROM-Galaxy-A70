.class public final synthetic Lcom/android/server/pm/-$$Lambda$PackageManagerServiceUtils$580OUFBTPOw37enVnxznE3-MUIU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:J


# direct methods
.method public synthetic constructor <init>(J)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerServiceUtils$580OUFBTPOw37enVnxznE3-MUIU;->f$0:J

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 4

    iget-wide v0, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerServiceUtils$580OUFBTPOw37enVnxznE3-MUIU;->f$0:J

    check-cast p1, Lcom/android/server/pm/PackageSetting;

    invoke-static {v0, v1, p1}, Lcom/android/server/pm/PackageManagerServiceUtils;->lambda$getPackagesForDexopt$7(JLcom/android/server/pm/PackageSetting;)Z

    move-result p1

    return p1
.end method
