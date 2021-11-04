.class public Lcom/android/server/enterprise/threatdefense/RuleParser;
.super Ljava/lang/Object;
.source "RuleParser.java"


# static fields
.field private static final DELIMITER:Ljava/lang/String; = "|"

.field private static final JSON_TAG_PACKAGE_NAME:Ljava/lang/String; = "pkg"

.field private static final JSON_TAG_PROCESS_PACKAGE_PUBLIC_PEM:Ljava/lang/String; = "pkg_pem"

.field private static final JSON_TAG_PROCESS_POLICY_VERSION:Ljava/lang/String; = "version"

.field private static final JSON_TAG_PROCESS_PROC_LIST:Ljava/lang/String; = "process_proc_list"

.field private static final JSON_TAG_PROC_LIST:Ljava/lang/String; = "proc_list"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mPacakagePublicSignature:Ljava/lang/String;

.field private mPackageName:Ljava/lang/String;

.field private mPolicyVersion:Ljava/lang/String;

.field private mProcLength:I

.field private final mProcList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mProcessProcLength:I

.field private final mProcessProcList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 12
    const-class v0, Lcom/android/server/enterprise/threatdefense/RuleParser;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/threatdefense/RuleParser;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .registers 7
    .param p1, "json"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/threatdefense/RuleParser;->mProcList:Ljava/util/ArrayList;

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/threatdefense/RuleParser;->mProcessProcList:Ljava/util/ArrayList;

    .line 31
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 32
    .local v0, "obj":Lorg/json/JSONObject;
    const-string/jumbo v1, "pkg"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/enterprise/threatdefense/RuleParser;->mPackageName:Ljava/lang/String;

    .line 33
    const-string/jumbo v1, "pkg_pem"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/enterprise/threatdefense/RuleParser;->mPacakagePublicSignature:Ljava/lang/String;

    .line 34
    const-string/jumbo v1, "version"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/enterprise/threatdefense/RuleParser;->mPolicyVersion:Ljava/lang/String;

    .line 36
    new-instance v1, Lorg/json/JSONArray;

    const-string/jumbo v2, "proc_list"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 37
    .local v1, "jsonArray":Lorg/json/JSONArray;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3e
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_5a

    .line 38
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 39
    .local v3, "proc":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_57

    .line 40
    iget-object v4, p0, Lcom/android/server/enterprise/threatdefense/RuleParser;->mProcList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    .end local v3    # "proc":Ljava/lang/String;
    :cond_57
    add-int/lit8 v2, v2, 0x1

    goto :goto_3e

    .line 43
    .end local v2    # "i":I
    :cond_5a
    iget-object v2, p0, Lcom/android/server/enterprise/threatdefense/RuleParser;->mProcList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iput v2, p0, Lcom/android/server/enterprise/threatdefense/RuleParser;->mProcLength:I

    .line 45
    new-instance v2, Lorg/json/JSONArray;

    const-string/jumbo v3, "process_proc_list"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    .line 46
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_70
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_8c

    .line 47
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 48
    .local v3, "processProc":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_89

    .line 49
    iget-object v4, p0, Lcom/android/server/enterprise/threatdefense/RuleParser;->mProcessProcList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    .end local v3    # "processProc":Ljava/lang/String;
    :cond_89
    add-int/lit8 v2, v2, 0x1

    goto :goto_70

    .line 52
    .end local v2    # "i":I
    :cond_8c
    iget-object v2, p0, Lcom/android/server/enterprise/threatdefense/RuleParser;->mProcessProcList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iput v2, p0, Lcom/android/server/enterprise/threatdefense/RuleParser;->mProcessProcLength:I

    .line 53
    return-void
.end method


# virtual methods
.method getPackageName()Ljava/lang/String;
    .registers 2

    .line 64
    iget-object v0, p0, Lcom/android/server/enterprise/threatdefense/RuleParser;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method getPackagePublicSignature()Ljava/lang/String;
    .registers 2

    .line 60
    iget-object v0, p0, Lcom/android/server/enterprise/threatdefense/RuleParser;->mPacakagePublicSignature:Ljava/lang/String;

    return-object v0
.end method

.method getProcList()Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 68
    iget-object v0, p0, Lcom/android/server/enterprise/threatdefense/RuleParser;->mProcList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_16

    iget-object v0, p0, Lcom/android/server/enterprise/threatdefense/RuleParser;->mProcList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/android/server/enterprise/threatdefense/RuleParser;->mProcLength:I

    if-eq v0, v1, :cond_13

    goto :goto_16

    .line 72
    :cond_13
    iget-object v0, p0, Lcom/android/server/enterprise/threatdefense/RuleParser;->mProcList:Ljava/util/ArrayList;

    return-object v0

    .line 69
    :cond_16
    :goto_16
    sget-object v0, Lcom/android/server/enterprise/threatdefense/RuleParser;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid proc : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/enterprise/threatdefense/RuleParser;->mProcList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/enterprise/threatdefense/RuleParser;->mProcLength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    const/4 v0, 0x0

    return-object v0
.end method

.method getProcessProcList()Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lcom/android/server/enterprise/threatdefense/RuleParser;->mProcessProcList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_16

    iget-object v0, p0, Lcom/android/server/enterprise/threatdefense/RuleParser;->mProcessProcList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/android/server/enterprise/threatdefense/RuleParser;->mProcessProcLength:I

    if-eq v0, v1, :cond_13

    goto :goto_16

    .line 80
    :cond_13
    iget-object v0, p0, Lcom/android/server/enterprise/threatdefense/RuleParser;->mProcessProcList:Ljava/util/ArrayList;

    return-object v0

    .line 77
    :cond_16
    :goto_16
    sget-object v0, Lcom/android/server/enterprise/threatdefense/RuleParser;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid process proc : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/enterprise/threatdefense/RuleParser;->mProcessProcList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/enterprise/threatdefense/RuleParser;->mProcessProcList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    const/4 v0, 0x0

    return-object v0
.end method

.method getVersion()Ljava/lang/String;
    .registers 2

    .line 56
    iget-object v0, p0, Lcom/android/server/enterprise/threatdefense/RuleParser;->mPolicyVersion:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 86
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/android/server/enterprise/threatdefense/RuleParser;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    invoke-virtual {p0}, Lcom/android/server/enterprise/threatdefense/RuleParser;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    iget-object v2, p0, Lcom/android/server/enterprise/threatdefense/RuleParser;->mProcList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 91
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    iget-object v2, p0, Lcom/android/server/enterprise/threatdefense/RuleParser;->mProcessProcList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    sget-boolean v2, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->DEBUG:Z

    if-eqz v2, :cond_6a

    .line 96
    iget-object v2, p0, Lcom/android/server/enterprise/threatdefense/RuleParser;->mProcList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_51

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 97
    .local v3, "proc":Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .end local v3    # "proc":Ljava/lang/String;
    goto :goto_3e

    .line 100
    :cond_51
    iget-object v2, p0, Lcom/android/server/enterprise/threatdefense/RuleParser;->mProcessProcList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_57
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 101
    .restart local v3    # "proc":Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .end local v3    # "proc":Ljava/lang/String;
    goto :goto_57

    .line 106
    :cond_6a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
