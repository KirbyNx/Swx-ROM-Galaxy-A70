.class Lcom/android/server/am/MARsPolicyManager$UsageInfo;
.super Ljava/lang/Object;
.source "MARsPolicyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/MARsPolicyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UsageInfo"
.end annotation


# instance fields
.field private batteryUsage:Ljava/lang/String;

.field private disable_level_size:Ljava/lang/String;

.field private exTras:Ljava/lang/String;

.field private fas_level_size:Ljava/lang/String;

.field private forcestop_level_size:Ljava/lang/String;

.field private freecess_level_size:Ljava/lang/String;

.field private packageName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/am/MARsPolicyManager;

.field private totalSize:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/android/server/am/MARsPolicyManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .param p2, "_packageName"    # Ljava/lang/String;
    .param p3, "_totalSize"    # Ljava/lang/String;
    .param p4, "_freecess_level_size"    # Ljava/lang/String;
    .param p5, "_fas_level_size"    # Ljava/lang/String;
    .param p6, "_forcestop_level_size"    # Ljava/lang/String;
    .param p7, "_disable_level_size"    # Ljava/lang/String;
    .param p8, "_batteryUsage"    # Ljava/lang/String;
    .param p9, "_exTras"    # Ljava/lang/String;

    .line 4000
    iput-object p1, p0, Lcom/android/server/am/MARsPolicyManager$UsageInfo;->this$0:Lcom/android/server/am/MARsPolicyManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4001
    const-string p1, "NONE"

    if-nez p2, :cond_b

    move-object v0, p1

    goto :goto_c

    :cond_b
    move-object v0, p2

    :goto_c
    iput-object v0, p0, Lcom/android/server/am/MARsPolicyManager$UsageInfo;->packageName:Ljava/lang/String;

    .line 4002
    if-nez p3, :cond_12

    move-object v0, p1

    goto :goto_13

    :cond_12
    move-object v0, p3

    :goto_13
    iput-object v0, p0, Lcom/android/server/am/MARsPolicyManager$UsageInfo;->totalSize:Ljava/lang/String;

    .line 4003
    if-nez p4, :cond_19

    move-object v0, p1

    goto :goto_1a

    :cond_19
    move-object v0, p4

    :goto_1a
    iput-object v0, p0, Lcom/android/server/am/MARsPolicyManager$UsageInfo;->freecess_level_size:Ljava/lang/String;

    .line 4004
    if-nez p5, :cond_20

    move-object v0, p1

    goto :goto_21

    :cond_20
    move-object v0, p5

    :goto_21
    iput-object v0, p0, Lcom/android/server/am/MARsPolicyManager$UsageInfo;->fas_level_size:Ljava/lang/String;

    .line 4005
    if-nez p6, :cond_27

    move-object v0, p1

    goto :goto_28

    :cond_27
    move-object v0, p6

    :goto_28
    iput-object v0, p0, Lcom/android/server/am/MARsPolicyManager$UsageInfo;->forcestop_level_size:Ljava/lang/String;

    .line 4006
    if-nez p7, :cond_2e

    move-object v0, p1

    goto :goto_2f

    :cond_2e
    move-object v0, p7

    :goto_2f
    iput-object v0, p0, Lcom/android/server/am/MARsPolicyManager$UsageInfo;->disable_level_size:Ljava/lang/String;

    .line 4007
    if-nez p8, :cond_35

    move-object v0, p1

    goto :goto_36

    :cond_35
    move-object v0, p8

    :goto_36
    iput-object v0, p0, Lcom/android/server/am/MARsPolicyManager$UsageInfo;->batteryUsage:Ljava/lang/String;

    .line 4008
    if-nez p9, :cond_3b

    goto :goto_4a

    :cond_3b
    invoke-virtual {p9}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v0, 0x190

    if-le p1, v0, :cond_49

    const/4 p1, 0x0

    invoke-virtual {p9, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_4a

    :cond_49
    move-object p1, p9

    :goto_4a
    iput-object p1, p0, Lcom/android/server/am/MARsPolicyManager$UsageInfo;->exTras:Ljava/lang/String;

    .line 4009
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/am/MARsPolicyManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/am/MARsPolicyManager$1;)V
    .registers 11
    .param p1, "x0"    # Lcom/android/server/am/MARsPolicyManager;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # Ljava/lang/String;
    .param p5, "x4"    # Ljava/lang/String;
    .param p6, "x5"    # Ljava/lang/String;
    .param p7, "x6"    # Ljava/lang/String;
    .param p8, "x7"    # Ljava/lang/String;
    .param p9, "x8"    # Ljava/lang/String;
    .param p10, "x9"    # Lcom/android/server/am/MARsPolicyManager$1;

    .line 3989
    invoke-direct/range {p0 .. p9}, Lcom/android/server/am/MARsPolicyManager$UsageInfo;-><init>(Lcom/android/server/am/MARsPolicyManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 5

    .line 4012
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4013
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4015
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\"PKNA\":\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager$UsageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4016
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\"PKLV\":\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager$UsageInfo;->totalSize:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4017
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\"COMA\":\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager$UsageInfo;->freecess_level_size:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4018
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\"COMS\":\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager$UsageInfo;->fas_level_size:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4019
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\"COMR\":\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager$UsageInfo;->forcestop_level_size:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4020
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\"COMB\":\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager$UsageInfo;->disable_level_size:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4021
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\"BATU\":\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager$UsageInfo;->batteryUsage:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4022
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\"EXTR\":\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager$UsageInfo;->exTras:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4024
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
