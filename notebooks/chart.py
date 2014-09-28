import matplotlib.pyplot as plt

red = '#e31d1d'
green = '#76e146'
blue = '#709afa'

class Plot(object):

    def __init__(self, title, xlabel="Time [s]", ylabel="", yrange=None, tend=5.0e-9, sr=1.0-11):
        self.end = tend
        self.sample_rate = sr
        self.ax = plt.figure(figsize=(16,7))
        plt.title(title)
        plt.xlabel(xlabel)
        plt.ylabel(ylabel)
        self.ax.axes[0].grid(color='grey', alpha=0.2, linestyle='dashed', linewidth=0.5)
        if yrange is not None:
            self.ax.axes[0].set_ylim(yrange)
        else:
            self.ax.axes[0].set_ylim([-1.5, 1.5])
        self.ax.axes[0].set_xlim([0,tend])

    def signal(self, f, color=red, alpha=0.8, lw=1.73, label="signal"):
        x = []
        y = []
        for i in xrange(int(self.end/self.sample_rate)):
            t = i*self.sample_rate
            x.append(t)
            y.append(f(t))
        plt.plot(x, y, color, alpha=alpha, lw=lw, label=label)
        return self

    def show(self):
        plt.show()
