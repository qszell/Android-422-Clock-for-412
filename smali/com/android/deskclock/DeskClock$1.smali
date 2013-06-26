.class Lcom/android/deskclock/DeskClock$1;
.super Ljava/lang/Object;
.source "DeskClock.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/deskclock/DeskClock;->showMenu(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/deskclock/DeskClock;


# direct methods
.method constructor <init>(Lcom/android/deskclock/DeskClock;)V
    .locals 0
    .parameter

    .prologue
    .line 216
    iput-object p1, p0, Lcom/android/deskclock/DeskClock$1;->this$0:Lcom/android/deskclock/DeskClock;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 219
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 238
    :cond_0
    :goto_0
    :pswitch_0
    return v4

    .line 221
    :pswitch_1
    iget-object v0, p0, Lcom/android/deskclock/DeskClock$1;->this$0:Lcom/android/deskclock/DeskClock;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/deskclock/DeskClock$1;->this$0:Lcom/android/deskclock/DeskClock;

    const-class v3, Lcom/android/deskclock/SettingsActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/android/deskclock/DeskClock;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 224
    :pswitch_2
    invoke-interface {p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 225
    if-eqz v0, :cond_0

    .line 227
    :try_start_0
    iget-object v1, p0, Lcom/android/deskclock/DeskClock$1;->this$0:Lcom/android/deskclock/DeskClock;

    invoke-virtual {v1, v0}, Lcom/android/deskclock/DeskClock;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 228
    :catch_0
    move-exception v0

    goto :goto_0

    .line 234
    :pswitch_3
    iget-object v0, p0, Lcom/android/deskclock/DeskClock$1;->this$0:Lcom/android/deskclock/DeskClock;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/deskclock/DeskClock$1;->this$0:Lcom/android/deskclock/DeskClock;

    const-class v3, Lcom/android/deskclock/ScreensaverActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/android/deskclock/DeskClock;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 219
    nop

    :pswitch_data_0
    .packed-switch 0x7f0e009c
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
