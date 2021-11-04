.class public final synthetic Lcom/android/server/pm/-$$Lambda$PmLog$XOoFhcqIP5I7I2lfU2odPGX7xVU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;IILjava/util/function/Consumer;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/-$$Lambda$PmLog$XOoFhcqIP5I7I2lfU2odPGX7xVU;->f$0:Ljava/lang/String;

    iput p2, p0, Lcom/android/server/pm/-$$Lambda$PmLog$XOoFhcqIP5I7I2lfU2odPGX7xVU;->f$1:I

    iput p3, p0, Lcom/android/server/pm/-$$Lambda$PmLog$XOoFhcqIP5I7I2lfU2odPGX7xVU;->f$2:I

    iput-object p4, p0, Lcom/android/server/pm/-$$Lambda$PmLog$XOoFhcqIP5I7I2lfU2odPGX7xVU;->f$3:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Lcom/android/server/pm/-$$Lambda$PmLog$XOoFhcqIP5I7I2lfU2odPGX7xVU;->f$0:Ljava/lang/String;

    iget v1, p0, Lcom/android/server/pm/-$$Lambda$PmLog$XOoFhcqIP5I7I2lfU2odPGX7xVU;->f$1:I

    iget v2, p0, Lcom/android/server/pm/-$$Lambda$PmLog$XOoFhcqIP5I7I2lfU2odPGX7xVU;->f$2:I

    iget-object v3, p0, Lcom/android/server/pm/-$$Lambda$PmLog$XOoFhcqIP5I7I2lfU2odPGX7xVU;->f$3:Ljava/util/function/Consumer;

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/pm/PmLog;->lambda$logInfoWithPackageName$1(Ljava/lang/String;IILjava/util/function/Consumer;)V

    return-void
.end method
