.class public Lcom/android/server/enterprise/utils/IOExceptionHandler;
.super Ljava/lang/Object;
.source "IOExceptionHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/utils/IOExceptionHandler$IOProcessor;,
        Lcom/android/server/enterprise/utils/IOExceptionHandler$ExceptionChain;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static process(Lcom/android/server/enterprise/utils/IOExceptionHandler$IOProcessor;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            "T:",
            "Lcom/android/server/enterprise/utils/IOExceptionHandler$IOProcessor<",
            "TS;>;>(TT;)V"
        }
    .end annotation

    .line 141
    .local p0, "processor":Lcom/android/server/enterprise/utils/IOExceptionHandler$IOProcessor;, "TT;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 142
    .local v0, "ec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Exception;>;"
    const/4 v1, 0x0

    .line 144
    .local v1, "io":Ljava/lang/Object;, "TS;"
    :try_start_6
    invoke-virtual {p0}, Lcom/android/server/enterprise/utils/IOExceptionHandler$IOProcessor;->open()Ljava/lang/Object;

    move-result-object v2
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_a} :catch_4f

    move-object v1, v2

    .line 146
    :try_start_b
    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/utils/IOExceptionHandler$IOProcessor;->process(Ljava/lang/Object;)V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_e} :catch_24
    .catchall {:try_start_b .. :try_end_e} :catchall_22

    .line 152
    :try_start_e
    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/utils/IOExceptionHandler$IOProcessor;->flush(Ljava/lang/Object;)V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_11} :catch_12

    .line 155
    goto :goto_16

    .line 153
    :catch_12
    move-exception v2

    .line 154
    .local v2, "e":Ljava/io/IOException;
    :try_start_13
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_16} :catch_4f

    .line 158
    .end local v2    # "e":Ljava/io/IOException;
    :goto_16
    :try_start_16
    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/utils/IOExceptionHandler$IOProcessor;->sync(Ljava/lang/Object;)V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_19} :catch_1a

    .line 161
    goto :goto_1e

    .line 159
    :catch_1a
    move-exception v2

    .line 160
    .restart local v2    # "e":Ljava/io/IOException;
    :try_start_1b
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    .end local v2    # "e":Ljava/io/IOException;
    :goto_1e
    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/utils/IOExceptionHandler$IOProcessor;->close(Ljava/lang/Object;)V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_21} :catch_4f

    .line 164
    goto :goto_39

    .line 151
    :catchall_22
    move-exception v2

    goto :goto_3a

    .line 147
    :catch_24
    move-exception v2

    .line 148
    .restart local v2    # "e":Ljava/io/IOException;
    :try_start_25
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_22

    .line 152
    .end local v2    # "e":Ljava/io/IOException;
    :try_start_28
    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/utils/IOExceptionHandler$IOProcessor;->flush(Ljava/lang/Object;)V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_2b} :catch_2c

    .line 155
    goto :goto_30

    .line 153
    :catch_2c
    move-exception v2

    .line 154
    .restart local v2    # "e":Ljava/io/IOException;
    :try_start_2d
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_30} :catch_4f

    .line 158
    .end local v2    # "e":Ljava/io/IOException;
    :goto_30
    :try_start_30
    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/utils/IOExceptionHandler$IOProcessor;->sync(Ljava/lang/Object;)V
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_33} :catch_34

    .line 161
    goto :goto_1e

    .line 159
    :catch_34
    move-exception v2

    .line 160
    .restart local v2    # "e":Ljava/io/IOException;
    :try_start_35
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_38} :catch_4f

    goto :goto_1e

    .line 167
    .end local v2    # "e":Ljava/io/IOException;
    :goto_39
    goto :goto_53

    .line 152
    :goto_3a
    :try_start_3a
    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/utils/IOExceptionHandler$IOProcessor;->flush(Ljava/lang/Object;)V
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_3d} :catch_3e

    .line 155
    goto :goto_42

    .line 153
    :catch_3e
    move-exception v3

    .line 154
    .local v3, "e":Ljava/io/IOException;
    :try_start_3f
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_42} :catch_4f

    .line 158
    .end local v3    # "e":Ljava/io/IOException;
    :goto_42
    :try_start_42
    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/utils/IOExceptionHandler$IOProcessor;->sync(Ljava/lang/Object;)V
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_45} :catch_46

    .line 161
    goto :goto_4a

    .line 159
    :catch_46
    move-exception v3

    .line 160
    .restart local v3    # "e":Ljava/io/IOException;
    :try_start_47
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    .end local v3    # "e":Ljava/io/IOException;
    :goto_4a
    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/utils/IOExceptionHandler$IOProcessor;->close(Ljava/lang/Object;)V

    .line 164
    nop

    .end local v0    # "ec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Exception;>;"
    .end local v1    # "io":Ljava/lang/Object;, "TS;"
    .end local p0    # "processor":Lcom/android/server/enterprise/utils/IOExceptionHandler$IOProcessor;, "TT;"
    throw v2
    :try_end_4f
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_4f} :catch_4f

    .line 165
    .restart local v0    # "ec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Exception;>;"
    .restart local v1    # "io":Ljava/lang/Object;, "TS;"
    .restart local p0    # "processor":Lcom/android/server/enterprise/utils/IOExceptionHandler$IOProcessor;, "TT;"
    :catch_4f
    move-exception v2

    .line 166
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 169
    .end local v2    # "e":Ljava/io/IOException;
    :goto_53
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_5a

    .line 172
    return-void

    .line 170
    :cond_5a
    new-instance v2, Lcom/android/server/enterprise/utils/IOExceptionHandler$ExceptionChain;

    invoke-direct {v2, v0}, Lcom/android/server/enterprise/utils/IOExceptionHandler$ExceptionChain;-><init>(Ljava/util/ArrayList;)V

    throw v2
.end method

.method public static process(Lcom/android/server/enterprise/utils/IOExceptionHandler$IOProcessor;Z)V
    .registers 3
    .param p1, "suppress"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            "T:",
            "Lcom/android/server/enterprise/utils/IOExceptionHandler$IOProcessor<",
            "TS;>;>(TT;Z)V"
        }
    .end annotation

    .line 187
    .local p0, "processor":Lcom/android/server/enterprise/utils/IOExceptionHandler$IOProcessor;, "TT;"
    :try_start_0
    invoke-static {p0}, Lcom/android/server/enterprise/utils/IOExceptionHandler;->process(Lcom/android/server/enterprise/utils/IOExceptionHandler$IOProcessor;)V
    :try_end_3
    .catch Lcom/android/server/enterprise/utils/IOExceptionHandler$ExceptionChain; {:try_start_0 .. :try_end_3} :catch_4

    .line 193
    goto :goto_a

    .line 188
    :catch_4
    move-exception v0

    .line 189
    .local v0, "e":Lcom/android/server/enterprise/utils/IOExceptionHandler$ExceptionChain;
    if-eqz p1, :cond_b

    .line 190
    invoke-virtual {v0}, Lcom/android/server/enterprise/utils/IOExceptionHandler$ExceptionChain;->printStackTrace()V

    .line 194
    .end local v0    # "e":Lcom/android/server/enterprise/utils/IOExceptionHandler$ExceptionChain;
    :goto_a
    return-void

    .line 192
    .restart local v0    # "e":Lcom/android/server/enterprise/utils/IOExceptionHandler$ExceptionChain;
    :cond_b
    throw v0
.end method
