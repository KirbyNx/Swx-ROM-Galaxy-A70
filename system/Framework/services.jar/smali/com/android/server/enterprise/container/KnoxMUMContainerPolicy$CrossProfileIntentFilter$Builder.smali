.class final Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$CrossProfileIntentFilter$Builder;
.super Ljava/lang/Object;
.source "KnoxMUMContainerPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$CrossProfileIntentFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Builder"
.end annotation


# instance fields
.field private mFilter:Landroid/content/IntentFilter;

.field private mFlags:I


# direct methods
.method constructor <init>(I)V
    .registers 3
    .param p1, "flags"    # I

    .line 4448
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4445
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$CrossProfileIntentFilter$Builder;->mFilter:Landroid/content/IntentFilter;

    .line 4446
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$CrossProfileIntentFilter$Builder;->mFlags:I

    .line 4449
    iput p1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$CrossProfileIntentFilter$Builder;->mFlags:I

    .line 4450
    return-void
.end method


# virtual methods
.method addAction(Ljava/lang/String;)Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$CrossProfileIntentFilter$Builder;
    .registers 3
    .param p1, "action"    # Ljava/lang/String;

    .line 4453
    iget-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$CrossProfileIntentFilter$Builder;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4454
    return-object p0
.end method

.method addDataScheme(Ljava/lang/String;)Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$CrossProfileIntentFilter$Builder;
    .registers 3
    .param p1, "scheme"    # Ljava/lang/String;

    .line 4467
    iget-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$CrossProfileIntentFilter$Builder;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, p1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 4468
    return-object p0
.end method

.method addDataType(Ljava/lang/String;)Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$CrossProfileIntentFilter$Builder;
    .registers 6
    .param p1, "type"    # Ljava/lang/String;

    .line 4459
    :try_start_0
    iget-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$CrossProfileIntentFilter$Builder;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, p1}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_0 .. :try_end_5} :catch_6

    .line 4462
    goto :goto_1f

    .line 4460
    :catch_6
    move-exception v0

    .line 4461
    .local v0, "e":Landroid/content/IntentFilter$MalformedMimeTypeException;
    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$200()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MalformedMimeTypeException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4463
    .end local v0    # "e":Landroid/content/IntentFilter$MalformedMimeTypeException;
    :goto_1f
    return-object p0
.end method

.method build()Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$CrossProfileIntentFilter;
    .registers 5

    .line 4472
    new-instance v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$CrossProfileIntentFilter;

    iget-object v1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$CrossProfileIntentFilter$Builder;->mFilter:Landroid/content/IntentFilter;

    iget v2, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$CrossProfileIntentFilter$Builder;->mFlags:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$CrossProfileIntentFilter;-><init>(Landroid/content/IntentFilter;ILcom/android/server/enterprise/container/KnoxMUMContainerPolicy$1;)V

    return-object v0
.end method
